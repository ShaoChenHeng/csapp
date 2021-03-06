// buggy version
void* copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
  /*
   * Allocate buffer for ele_cnt objects, each of ele_size bytes
   * and copy from locations designated by ele_src
   */
  void *result = malloc(ele_cnt * ele_size);
  if (result == NULL)
    /* malloc failed */
    return NULL;
  void *next = result;
  int i;
  for (i = 0; i < ele_cnt; i ++) {
    /* Copy object i to destination */
    memcpy(next, ele_src[i], ele_size);
    /* Move pointer to next memory region */
    next += ele_size;
  }
  return result;
}

// repair version
void* copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
  uint64_t required_size = ele_cnt * (uint_64) ele_size;
  size_t request_size = (size_t) required_size;
  if (required_size != request_size)
    /* Overflow must have occurred. Abort operation. */
    return NULL;
  void *result = malloc(request_size);
  if (result == NULL)
    /* malloc failed */
    return NULL;
  for (i = 0; i < ele_cnt; i ++) {
    /* Copy object i to destination */
    memcpy(next, ele_src[i], ele_size);
    /* Move pointer to next memory region */
    next += ele_size;
  }
  return result;
}
