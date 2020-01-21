#define MAX_DATA_SIZE 10
struct{
        int Data[MAX_DATA_SIZE];
}sSensorData;


extern unsigned long _SensorData;
extern unsigned long _SensorDataLen;
struct sSensorData *gSensor = (struct sSensorData *) &_SensorData;


static int arr[] = { 1, 10, 4, 5, 6, 7 };
static int sum;
static const int n = sizeof(arr) / sizeof(arr[0]);

int main()
{
        int i;

        for (i = 0; i < n; i++)
                sum += arr[i];
}