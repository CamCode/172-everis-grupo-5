import { Component } from '@angular/core';
import { constructDependencies } from '@angular/core/src/di/reflective_provider';
import { Router } from '@angular/router';
import { NavController } from '@ionic/angular';
import { ExampleService } from '../services/example.service';
import {LoadingController} from '@ionic/angular';


@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {
 valor= 'Fernando'
 users: any;

 constructor(
   private router: Router,
   private navCtrl: NavController, 
   private myService: ExampleService,
   public loadingController: LoadingController

 ){}

 pushSegunda(){
  this.router.navigate(['/segunda',this.valor]);
 }

 pushSegundaNAvCtrl(){
  this.navCtrl.navigateForward(`/segunda/${this.valor}`)
 }


 hacerAlgo()
 {
   this.doTheHardSuff();
 }

 doTheHardSuff()
 {
   // this.getPost();
    this.navCtrl.navigateForward(`/segunda/${this.users}`)
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
                  this.users = res;
                  loading.dismiss();
                },
                err => {
                  console.log(err);
                  loading.dismiss();
                }

              )

 }


}
