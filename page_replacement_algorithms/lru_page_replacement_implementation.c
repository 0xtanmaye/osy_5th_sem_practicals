#include <stdio.h>
#include <stdlib.h>

#define MAX_FRAMES 3

struct Page
{
	int value;
	int lastUsed;
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

void updateLastUsed(struct Page frames[], int n, int page)
{
	for (int j = 0; j < n; j++) {
		if (frames[j].value == page) {
			frames[j].lastUsed = 0;
		} else {
			frames[j].lastUsed++;
		}
	}
}

int findLRU(struct Page frames[], int n)
{
	int lruIndex = 0;
	for (int j = 1; j < n; j++) {
		if (frames[j].lastUsed > frames[lruIndex].lastUsed) {
			lruIndex = j;
		}
	}
	return lruIndex;
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
		frames[i].lastUsed = 1;
	}

	for (int i = 0; i < n; i++) {
		printf("[Accessing Page %d] ", pages[i]);

		if (isPageInFrames(frames, MAX_FRAMES, pages[i])) {
			printf("[Page Hit]\n");
			pageHits++;
			updateLastUsed(frames, MAX_FRAMES, pages[i]);
		} else {
			printf("[Page Fault]\n");

			int lruIndex = findLRU(frames, MAX_FRAMES);
			frames[lruIndex].value = pages[i];
			updateLastUsed(frames, MAX_FRAMES, pages[i]);

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
