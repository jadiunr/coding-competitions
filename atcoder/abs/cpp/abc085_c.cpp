#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, y;

    cin >> n;
    cin >> y;

    for (int yukichi = 0; yukichi <= n; yukichi++)
        for (int higuchi = 0; higuchi <= n - yukichi; higuchi++) {
            int noguchi = n - yukichi - higuchi;
            if ((yukichi * 10000 + higuchi * 5000 + noguchi * 1000) == y) {
                printf("%d %d %d\n", yukichi, higuchi, noguchi);
                return 0;
            }
        }

    printf("-1 -1 -1");
}