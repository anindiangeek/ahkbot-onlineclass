// Jai Hind
#include <bits/stdc++.h>
using namespace std;

#define ll long long

void solve()
{
    ll int c;
    ll int za = 0, zb = 0;
    ll int size;
    ll int k;
    vector<int> v1;
    vector<int> v2;
    vector<int> v3;
    // scanf("%lld", &c);
    cin >> c;

    while (c > 0)
    {
        v1.push_back(c % 2);
        c /= 2;
    }
    reverse(v1.begin(), v1.end());

    if (v1[0] == 1)
    {
        v2.push_back(1);
        v3.push_back(0);
    }
    else if (v1[0] == 0)
    {
        v2.push_back(1);
        v3.push_back(1);
    }
    for (auto i = v1.begin() + 1; i != v1.end(); i++)
    {
        if (*i == 1)
        {
            v2.push_back(0);
            v3.push_back(1);
        }
        else if (*i == 0)
        {
            v2.push_back(1);
            v3.push_back(1);
        }
    }

    k = 1;
    size = v2.size();
    for (int i = size - 1; i >= 0; i--)
    {
        if (v2[i] == 1)
            za += k;
        k *= 2;
    }
    k = 1;
    size = v3.size();
    for (int i = size - 1; i >= 0; i--)
    {
        if (v3[i] == 1)
            zb += k;
        k *= 2;
    }
    cout << za * zb << endl;
}
// void io()
// {
//     freopen("input.txt", "r", stdin);
//     freopen("output.txt", "w+", stdout);
// }
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    // io(); // THIS MUST BE DELETED BEFORE SUBMITTING
    int t;
    cin >> t;
    do
    {
        solve();
        t--;
    } while (t != 0);

    return 0;
}