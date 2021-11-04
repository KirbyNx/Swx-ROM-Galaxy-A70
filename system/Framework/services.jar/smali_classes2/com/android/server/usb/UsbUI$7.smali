.class Lcom/android/server/usb/UsbUI$7;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbUI;

    .line 351
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 354
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(Host Interface): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UsbUI"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "ACTION"

    invoke-virtual {v2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "action":Ljava/lang/String;
    const-string v0, "INTERFACE"

    invoke-virtual {v2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "interfac":Ljava/lang/String;
    const-string v0, "WARNING"

    invoke-virtual {v2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "warning":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "id":I
    const/4 v8, 0x0

    .local v8, "title":I
    const/4 v9, 0x0

    .line 362
    .local v9, "message":I
    const-string/jumbo v0, "unsupport_accessory"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 363
    const/16 v7, 0x72

    .line 364
    const v8, 0x1040cd0

    .line 365
    const v9, 0x1040ccf

    .line 367
    if-eqz v8, :cond_12f

    if-eqz v9, :cond_12f

    .line 368
    iget-object v10, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v14, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_12f

    .line 370
    :cond_51
    const-string/jumbo v0, "no_response"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 371
    const/16 v7, 0x73

    .line 372
    const v8, 0x1040cb4

    .line 373
    const v9, 0x1040cb3

    .line 375
    if-eqz v8, :cond_12f

    if-eqz v9, :cond_12f

    .line 376
    iget-object v10, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v14, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_12f

    .line 378
    :cond_72
    const-string/jumbo v0, "hub_depth_exceed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 379
    const/16 v7, 0x74

    .line 380
    const v8, 0x1040ca3

    .line 381
    const v9, 0x1040ca2

    .line 383
    if-eqz v8, :cond_12f

    if-eqz v9, :cond_12f

    .line 384
    iget-object v10, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v14, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_12f

    .line 386
    :cond_93
    const-string/jumbo v0, "hub_power_exceed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 387
    const/16 v7, 0x75

    .line 388
    const v8, 0x1040cb4

    .line 389
    const v9, 0x1040ca4

    .line 391
    if-eqz v8, :cond_12f

    if-eqz v9, :cond_12f

    .line 392
    iget-object v10, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v14, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_12f

    .line 394
    :cond_b4
    const-string/jumbo v0, "host_resource_exceed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 395
    const/16 v7, 0x76

    .line 396
    const v8, 0x1040ca1

    .line 397
    const v9, 0x1040ca0

    .line 399
    if-eqz v8, :cond_12f

    if-eqz v9, :cond_12f

    .line 400
    iget-object v10, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v14, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_12f

    .line 405
    :cond_d4
    :try_start_d4
    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "tok":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    .line 407
    .local v10, "clazz":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v0, v11

    .line 408
    .local v11, "subClass":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v0, v12

    .line 410
    .local v12, "protocol":Ljava/lang/String;
    if-eqz v10, :cond_100

    if-eqz v11, :cond_100

    if-nez v12, :cond_ec

    move-object/from16 v16, v0

    goto :goto_102

    .line 412
    :cond_ec
    iget-object v13, v1, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    .line 413
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 414
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 415
    move-object/from16 v16, v0

    .end local v0    # "tok":[Ljava/lang/String;
    .local v16, "tok":[Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 412
    # invokes: Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V
    invoke-static {v13, v4, v14, v15, v0}, Lcom/android/server/usb/UsbUI;->access$1400(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_ff} :catch_119
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d4 .. :try_end_ff} :catch_103

    .end local v10    # "clazz":Ljava/lang/String;
    .end local v11    # "subClass":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    goto :goto_12e

    .line 410
    .restart local v0    # "tok":[Ljava/lang/String;
    .restart local v10    # "clazz":Ljava/lang/String;
    .restart local v11    # "subClass":Ljava/lang/String;
    .restart local v12    # "protocol":Ljava/lang/String;
    :cond_100
    move-object/from16 v16, v0

    .end local v0    # "tok":[Ljava/lang/String;
    .restart local v16    # "tok":[Ljava/lang/String;
    :goto_102
    return-void

    .line 418
    .end local v10    # "clazz":Ljava/lang/String;
    .end local v11    # "subClass":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :catch_103
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ArrayIndexOutOfBoundsException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    .line 416
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_119
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse state or devPath from event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_12e
    nop

    .line 422
    :cond_12f
    :goto_12f
    return-void
.end method
