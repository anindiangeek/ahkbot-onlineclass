// Jai Hind
#include <bits/stdc++.h>

using namespace std;

#define ll unsigned long long

void solve()
{
    string s;
    ll int n;
    cin >> s;
    n = s.length();
    int group = 0;
    int m = 0;
    if (n == 1)
    {
        cout << (s[0] == '1' ? 1 : 0) << "\n";
        return;
    }

    for (int i = 0; i < (n - 1); i++)
    {
        if (s[i] == '1' && s[i + 1] != '1')
        {
            group++;
        }
        else
        {
            continue;
        }
    }
    if (s[n - 1] == '1')
    {
        group++;
    }

    cout << group << "\n";
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
    int t;
    cin >> t;
    do
    {
        solve();
        t--;
    } while (t != 0);

    return 0;
}