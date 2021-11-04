.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1247
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 1248
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1249
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1253
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_d4

    :pswitch_7
    goto/16 :goto_d3

    .line 1350
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoEnhancerListInDataBase()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1351
    goto/16 :goto_d3

    .line 1346
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->controlAclValue()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1347
    goto/16 :goto_d3

    .line 1342
    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getCurrentOpr()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1343
    goto/16 :goto_d3

    .line 1338
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 1339
    goto/16 :goto_d3

    .line 1334
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 1335
    goto/16 :goto_d3

    .line 1330
    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    .line 1331
    goto/16 :goto_d3

    .line 1326
    :pswitch_33
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    .line 1327
    goto/16 :goto_d3

    .line 1322
    :pswitch_3a
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 1323
    goto/16 :goto_d3

    .line 1318
    :pswitch_41
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 1319
    goto/16 :goto_d3

    .line 1314
    :pswitch_48
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1315
    goto/16 :goto_d3

    .line 1310
    :pswitch_4f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1311
    goto/16 :goto_d3

    .line 1302
    :pswitch_56
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSNSMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1303
    goto/16 :goto_d3

    .line 1298
    :pswitch_61
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1299
    goto/16 :goto_d3

    .line 1294
    :pswitch_6c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1295
    goto :goto_d3

    .line 1290
    :pswitch_72
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1291
    goto :goto_d3

    .line 1274
    :pswitch_78
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(ZLjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 1275
    goto :goto_d3

    .line 1270
    :pswitch_82
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 1271
    goto :goto_d3

    .line 1266
    :pswitch_8c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1267
    goto :goto_d3

    .line 1286
    :pswitch_96
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1287
    goto :goto_d3

    .line 1282
    :pswitch_9c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1283
    goto :goto_d3

    .line 1278
    :pswitch_a6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1279
    goto :goto_d3

    .line 1306
    :pswitch_b0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 1307
    goto :goto_d3

    .line 1260
    :pswitch_ba
    :try_start_ba
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c2} :catch_c3

    .line 1262
    goto :goto_d3

    .line 1261
    :catch_c3
    move-exception v0

    .line 1263
    goto :goto_d3

    .line 1255
    :pswitch_c5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    .line 1256
    nop

    .line 1363
    :goto_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_ba
        :pswitch_b0
        :pswitch_a6
        :pswitch_9c
        :pswitch_96
        :pswitch_8c
        :pswitch_82
        :pswitch_78
        :pswitch_72
        :pswitch_6c
        :pswitch_61
        :pswitch_56
        :pswitch_7
        :pswitch_4f
        :pswitch_48
        :pswitch_7
        :pswitch_41
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
