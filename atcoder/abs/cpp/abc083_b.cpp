#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, a, b;
    cin >> n >> a >> b;
    vector<int> filtered;

    for (int i = 1; i <= n; i++) {
        string s = to_string(i);
        int digit_sum = 0;
        for (char c : s) digit_sum += c - '0';
        if ((digit_sum >= a) && (digit_sum <= b)) filtered.push_back(i);
    }

    int sum = 0;
    for (int i : filtered) sum += i;
    
    cout << sum << endl;
}