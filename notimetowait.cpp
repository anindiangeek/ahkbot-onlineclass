// Jai Hind
#include <bits/stdc++.h>
using namespace std;

#define ll long long

void solve()
{
    int n, h, x, p;
    cin >> n >> h >> x;
    int a[n];
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }
    if (x >= h)
    {
        cout << "YES";
    }
    else
    {
        for (int i = 0; i < n; i++)
        {
            p = a[i] + x;
            if (p >= h)
            {
                cout << "YES";
                return;
            }
        }
        cout << "NO";
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

    solve();
    return 0;
}