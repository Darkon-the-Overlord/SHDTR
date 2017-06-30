///update_xy()

var i;
var ii;

for (i = 100; i > 0; i -= 1)
{
    my_x[abs(i)] = my_x[abs(i-1)];
}
for (ii = 100; ii > 0; ii -= 1)
{
    my_y[abs(ii)] = my_y[abs(ii-1)]
}

my_x[0]=x;
my_y[0]=y;
