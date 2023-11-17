#include <stdio.h>

#define MAX_FRAMES 3

void displayFrames(int frames[], int n)
{
	printf("Frames: ");
	for (int i = 0; i < n; i++) {
		if (frames[i] == -1) {
			printf(" | ");
		} else {
			printf("%d | ", frames[i]);
		}
	}
	printf("\n");
}

int isPageInFrames(int frames[], int n, int page)
{
	for (int i = 0; i < n; i++) {
		if (frames[i] == page) {
			return 1;
		}
	}
	return 0;
}

int main()
{
	int n;
	printf("Enter the number of pages: ");
	scanf("%d", &n);

	int pages[n];
	printf("Enter the page stream: ");
	for (int i = 0; i < n; i++) {
		scanf("%d", &pages[i]);
	}

	int frames[MAX_FRAMES];
	int pageFaults = 0;
	int pageHits = 0;
	int currentIndex = 0;

	for (int i = 0; i < MAX_FRAMES; i++) {
		frames[i] = -1;
	}

	for (int i = 0; i < n; i++) {
		printf("[Accessing Page %d] ", pages[i]);

		if (isPageInFrames(frames, MAX_FRAMES, pages[i])) {
			printf("[Page Hit]\n");
			pageHits++;
		} else {
			printf("[Page Fault]\n");
			frames[currentIndex] = pages[i];
			currentIndex = (currentIndex + 1) % MAX_FRAMES;
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
