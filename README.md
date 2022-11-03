# Frequency response for different filters

*To calculate the frequency responses of the 3 filters (Disk filter, Laplacian filter , Sobel filter)*

___________
Steps:-

a: define the linear kernels of the following filters (using fspecial())                
>• disk filter with radius = 10             
>• Laplacian filter with alpha = 0.3          
>• Sobel filter                         
  
b: apply the filters                        
>• convert the input image to double precision                   
>• apply the 3 filters respectively                          
  
c: calculate the frequency responses of the 3 filters                        
>• compute the Fourier transform in a 128 × 128 matrix (padding the filters with trailing zeros to form before the transform)                      
>• shift zero-frequency component to center of spectrum                            

                         
                              
                              
********************************************                                         
**Results**               
********************************************            
***1. FREQUENCY RESPONSE USING DISK FILTER***                    
                                    
![disk](https://user-images.githubusercontent.com/92868130/199800312-b20b8e10-ded1-49b6-ad0f-7ed7b9166ff6.jpg)                      
                       
*********************************************                                  
***2. FREQUENCY RESPONSE USING LAPLACIAN FILTER***               

                       
![laplacian](https://user-images.githubusercontent.com/92868130/199800797-debf6df2-b96b-43c1-93c2-a757d4a22adb.jpg)
       
       
 **************************************************      
 ***3. FREQUENCY RESPONSE USING SOBEL FILTER***   
 
 ![sobel](https://user-images.githubusercontent.com/92868130/199801490-3065a975-abfa-4513-b5ff-f1bccf72c28f.jpg)




