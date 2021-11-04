.class Lcom/android/server/input/InputManagerService$36;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 5377
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5380
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5381
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "InputManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_ca

    .line 5382
    const-string v1, "cmd"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5383
    .local v1, "callAction":Ljava/lang/String;
    const-string v5, ""

    .line 5384
    .local v5, "option":Ljava/lang/String;
    const-string/jumbo v6, "option"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 5385
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5387
    :cond_25
    const-string v6, "device"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5388
    .local v6, "deviceID":I
    const/4 v7, 0x0

    .line 5389
    .local v7, "slot":I
    const-string/jumbo v8, "slot"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 5390
    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 5392
    :cond_3d
    const-string/jumbo v8, "on"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 5393
    iget-object v8, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    shl-int v9, v4, v7

    # |= operator for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v8, v9}, Lcom/android/server/input/InputManagerService;->access$4376(Lcom/android/server/input/InputManagerService;I)I

    goto :goto_56

    .line 5395
    :cond_4e
    iget-object v8, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    shl-int v9, v4, v7

    not-int v9, v9

    # &= operator for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v8, v9}, Lcom/android/server/input/InputManagerService;->access$4372(Lcom/android/server/input/InputManagerService;I)I

    .line 5397
    :goto_56
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received SARDEVICE_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " deviceID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " option = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mSARState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5399
    # getter for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->access$4300(Lcom/android/server/input/InputManagerService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5397
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    and-int/lit8 v2, v6, 0x1

    if-nez v2, :cond_99

    and-int/lit8 v2, v6, 0x20

    if-eqz v2, :cond_c8

    .line 5401
    :cond_99
    const/4 v2, 0x0

    .line 5402
    .local v2, "deviceValue":I
    iget-object v8, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->access$4300(Lcom/android/server/input/InputManagerService;)I

    move-result v8

    if-eqz v8, :cond_be

    .line 5403
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v3, v4}, Lcom/android/server/input/InputManagerService;->access$4402(Lcom/android/server/input/InputManagerService;Z)Z

    .line 5404
    const/4 v2, 0x1

    .line 5405
    const-string v3, "band:lo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 5406
    or-int/lit8 v2, v2, 0x20

    goto :goto_c3

    .line 5408
    :cond_b3
    const-string v3, "band:hi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 5409
    or-int/lit8 v2, v2, 0x10

    goto :goto_c3

    .line 5412
    :cond_be
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v4, v3}, Lcom/android/server/input/InputManagerService;->access$4402(Lcom/android/server/input/InputManagerService;Z)Z

    .line 5414
    :cond_c3
    :goto_c3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v6, v2}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(II)V

    .line 5416
    .end local v1    # "callAction":Ljava/lang/String;
    .end local v2    # "deviceValue":I
    .end local v5    # "option":Ljava/lang/String;
    .end local v6    # "deviceID":I
    .end local v7    # "slot":I
    :cond_c8
    goto/16 :goto_14d

    .line 5417
    :cond_ca
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 5418
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 5419
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 5420
    .local v5, "currentState":Landroid/net/NetworkInfo$DetailedState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received NETWORK_STATE_CHANGED_ACTION, currentState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    const-string v2, ""

    const-string v6, "TOUCHKEY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 5422
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v2, :cond_10d

    .line 5423
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z
    invoke-static {v2, v4}, Lcom/android/server/input/InputManagerService;->access$4502(Lcom/android/server/input/InputManagerService;Z)Z

    .line 5424
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)V

    goto :goto_11b

    .line 5425
    :cond_10d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v2, :cond_11b

    .line 5426
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)V

    .line 5427
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->access$4502(Lcom/android/server/input/InputManagerService;Z)Z

    .line 5430
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "currentState":Landroid/net/NetworkInfo$DetailedState;
    :cond_11b
    :goto_11b
    goto :goto_14d

    .line 5431
    :cond_11c
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 5432
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5433
    .local v1, "state":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received HEADSET_PLUG state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    if-ne v1, v4, :cond_148

    .line 5435
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)V

    goto :goto_14d

    .line 5438
    :cond_148
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$36;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)V

    .line 5441
    .end local v1    # "state":I
    :cond_14d
    :goto_14d
    return-void
.end method
