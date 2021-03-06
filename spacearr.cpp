// Jai Hind
#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define ull unsigned long long

void solve()
{
    ull int n;
    cin >> n;
    ull int a[n];
    ull int sum = 0;
    ull int diffrence = 0;
    ull int x = ((n * (n + 1)) / 2);
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
        sum += a[i];
    }
}
void io()
{
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w+", stdout);
}
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    io(); // THIS MUST BE DELETED BEFORE SUBMITTING
    ull int t;
    cin >> t;
    do
    {
        solve();
        t--;
    } while (t != 0);

    return 0;
}