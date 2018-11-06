import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ExampleService } from '../services/example.service';
import {LoadingController} from '@ionic/angular';

@Component({
  selector: 'app-segunda',
  templateUrl: './segunda.page.html',
  styleUrls: ['./segunda.page.scss'],
})
export class SegundaPage implements OnInit {

   argumento = null;  
   motivos: any;

  constructor(
    private activateRoute:  ActivatedRoute,
    private myService: ExampleService,
    public loadingController: LoadingController


  ) { }

  ngOnInit() {


    this.argumento = this.activateRoute.snapshot.paramMap.get('id'),
   this. consultarPosts()



  }

  consultarPosts()
  {
  
    this.getPost();
  }



  async getPost()
 {
     const loading = await this.loadingController.create({
    
     });
      console.log(loading);
     await loading.present();
     await this.myService.get()
            .subscribe(
                res => {
                  console.log(res);
                  this.motivos = res;
                  loading.dismiss();
                },
                err => {
                  console.log(err);
                  loading.dismiss();
                }

              )

 }

}
