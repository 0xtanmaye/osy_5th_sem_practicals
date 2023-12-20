#include <stdio.h>
#include <stdlib.h>

#define MAX_FRAMES 3
#define INFINITY 9999

struct Page
{
	int value;
	int nextUse;
};

void displayFrames(struct Page frames[], int n)
{
	printf("Frames: ");
	for (int j = 0; j < n; j++) {
		if (frames[j].value == -1) {
			printf(" | ");
		} else {
			printf("%d | ", frames[j].value);
		}
	}
	printf("\n");
}

int isPageInFrames(struct Page frames[], int n, int page)
{
	for (int j = 0; j < n; j++) {
		if (frames[j].value == page) {
			return 1;
		}
	}
	return 0;
}

int findOptimalReplacement(struct Page frames[], int n, int pages[], int startIndex, int length)
{
	int farthestIndex = -1;
	int farthestDistance = -1;

	for (int i = 0; i < n; i++) {
		int nextPageIndex = startIndex;
		while (nextPageIndex < length && pages[nextPageIndex] != frames[i].value) {
			nextPageIndex++;
		}

		if (nextPageIndex == length) {
			return i;
		} else {
			int distance = nextPageIndex - startIndex;
			if (distance > farthestDistance) {
				farthestDistance = distance;
				farthestIndex = i;
			}
		}
	}

	return farthestIndex;
}

int main()
{
	int n;
	printf("Enter the number of pages: ");
	scanf("%d", &n);

	if (n <= 0) {
		printf("Invalid number of pages. Exiting.\n");
		return 1;
	}

	int pages[n];
	printf("Enter the page stream: ");
	for (int i = 0; i < n; i++) {
		scanf("%d", &pages[i]);
	}

	struct Page frames[MAX_FRAMES];
	int pageFaults = 0;
	int pageHits = 0;

	for (int i = 0; i < MAX_FRAMES; i++) {
		frames[i].value = -1;
		frames[i].nextUse = INFINITY;
	}

	for (int i = 0; i < n; i++) {
		printf("[Accessing Page %d] ", pages[i]);

		if (isPageInFrames(frames, MAX_FRAMES, pages[i])) {
			printf("[Page Hit]\n");
			pageHits++;
		} else {
			printf("[Page Fault]\n");

			int replacementIndex = findOptimalReplacement(frames, MAX_FRAMES, pages, i + 1, n);
			frames[replacementIndex].value = pages[i];
			frames[replacementIndex].nextUse = INFINITY;

			pageFaults++;
		}

		displayFrames(frames, MAX_FRAMES);
	}

	printf("Total Page Hits: %d\n", pageHits);
	printf("Total Page Faults: %d\n", pageFaults);

	float hitRatio = (float)pageHits / n;
	float faultRatio = (float)pageFaults / n;

	printf("Page Hit Ratio: %.2f\n", hitRatio);
	printf("Page Fault Ratio: %.2f\n", faultRatio);

	return 0;
}
