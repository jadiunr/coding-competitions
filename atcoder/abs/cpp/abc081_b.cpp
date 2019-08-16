#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> a;
    int i;
    while (cin >> i) a.push_back(i);

    int count = 0;
    while (1) {
        for (int &an : a) {
            if ((an & 1) == 0) an >>= 1;
            else {
                cout << count << endl;
                return 0;
            }
        }
        count++;
    }
}