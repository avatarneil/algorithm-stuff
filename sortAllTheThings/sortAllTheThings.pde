float [] nums;

void setup() {
  int k= millis();
  nums = new float [10];
  for (int z = 0; z<10; z++) {
    nums [z]=random(10);
  }
  mergeSort(nums,0,nums.length-1);
  //println(millis()-k);
}

void draw() {
}

void sortOne() {
  for (int j = 1; j< nums.length; j++) {
    float js = nums[j];
    int i = j - 1;
    while (i>=0 && nums[i]>js) {
      nums[i+1]=nums[i];
      i=i-1;
    }
    nums[i+1]=js;
  }
}

void merge(float [] array, int p, int q, int r){
  int n1 = q - p +1;
  int n2 = r - q; //both n1 & n2 are 5
  float [] L=new float [n1+1];
  float [] R=new float [n2+1];
  for (int i = 0; i<n1; i++){
    L[i] = array[p+i];
  }
  for (int j=0; j<n2; j++){
    R[j] = array[q+j+1];
  }
  L[n1]= 1/0.0;
  R[n2]= 1/0.0;
  int i=0;
  int j=0;
  for (int k=p; k<=r; k++){
    if (L[i]<= R[j]){
      array[k] = L[i];
      i++;
    } else {
      array[k] = R[j];
      j++;
    }
  }
  println(array);
  println("__________");
}

void mergeSort(float [] array, int p, int r){
  int q;
  if (p < r){
    q= floor((p+r)/2);
    mergeSort(array,p,q);
    mergeSort(array,q+1,r);
    merge(array,p,q,r);
  }
}