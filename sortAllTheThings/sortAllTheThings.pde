//float [] nums;
import java.util.List;
ArrayList <Comparable> nums = new ArrayList <Comparable>();

void setup() {
  for (int z = 0; z<5000000; z++) {
    nums.add(random(10));
  }
  int k= millis();
  mergeSort(nums,0,nums.size()-1);
  println(millis()-k);
}

void draw() {
}

void sortOne() {
  for (int j = 1; j< nums.size(); j++) {
    Comparable js = nums.get(j);
    int i = j - 1;
    while (i>=0 && (nums.get(i).compareTo(js)>0)) {
      nums.set(i+1, nums.get(i));
      i=i-1;
    }
    nums[i+1]=js;
  }
}

void merge(ArrayList array, int p, int q, int r){
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
}

void mergeSort(ArrayList array, int p, int r){
  int q;
  if (p < r){
    q= floor((p+r)/2);
    mergeSort(array,p,q);
    mergeSort(array,q+1,r);
    merge(array,p,q,r);
  }
}