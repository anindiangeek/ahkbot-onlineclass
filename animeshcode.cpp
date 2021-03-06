#include <bits/stdc++.h>
using namespace std;
#define ll long long
int main()
{
    // your code goes here
    ll int t;
    scanf("%lld", &t);
    while (t > 0)
    {

        ll int c, na = 0, nb = 0, size;
        ll int b;
        vector<int> v1, v2, v3;
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

        b = 1;
        size = v2.size();
        for (int i = size - 1; i >= 0; i--)
        {
            if (v2[i] == 1)
                na += b;
            b = b * 2;
        }
        b = 1;
        size = v3.size();
        for (int i = size - 1; i >= 0; i--)
        {
            if (v3[i] == 1)
                nb += b;
            b *= 2;
        }
        cout << na * nb << endl;

        t--;
    }
    return 0;
}