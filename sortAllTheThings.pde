float [] nums;

void setup() {
  int k= millis();
  nums = new float [50000];
  for (int z = 0; z<50000; z++) {
    nums [z]=random(50000);
  }
  sortOne();
  println(millis()-k);
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

void Merge(float array, int p, int q, int r){
  
}