.class Lcom/android/server/usb/UsbUI$6;
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

    .line 285
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 27
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(Host Path): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbUI"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "ACTION"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "action":Ljava/lang/String;
    const-string v3, "STATE"

    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v4, "remove"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 294
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # invokes: Lcom/android/server/usb/UsbUI;->cancelAllHostNotification()V
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$1000(Lcom/android/server/usb/UsbUI;)V

    .line 295
    return-void

    .line 298
    :cond_36
    const-string v4, "change"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    if-eqz v3, :cond_f6

    .line 299
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "REMOVE"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "ADD"

    sparse-switch v5, :sswitch_data_f8

    :cond_4f
    goto :goto_73

    :sswitch_50
    const-string v5, "UNKNOWN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v4, v7

    goto :goto_73

    :sswitch_5a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v4, 0x0

    goto :goto_73

    :sswitch_62
    const-string v5, "OVERCURRENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v4, v8

    goto :goto_73

    :sswitch_6c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v4, v9

    :goto_73
    if-eqz v4, :cond_b5

    if-eq v4, v9, :cond_a2

    if-eq v4, v8, :cond_8d

    if-eq v4, v7, :cond_7c

    goto :goto_c8

    .line 325
    :cond_7c
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x71

    const v13, 0x1040c9b

    const/4 v14, 0x0

    const v15, 0x1080a2b

    const-wide/16 v16, 0x0

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V
    invoke-static/range {v11 .. v17}, Lcom/android/server/usb/UsbUI;->access$1300(Lcom/android/server/usb/UsbUI;IIIIJ)V

    .line 330
    goto :goto_c8

    .line 317
    :cond_8d
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v19, 0x70

    const v20, 0x1040c9f

    const v21, 0x1040c9e

    const v22, 0x1080a2a

    const-wide/16 v23, 0x0

    move-object/from16 v18, v4

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V
    invoke-static/range {v18 .. v24}, Lcom/android/server/usb/UsbUI;->access$1300(Lcom/android/server/usb/UsbUI;IIIIJ)V

    .line 322
    goto :goto_c8

    .line 309
    :cond_a2
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # invokes: Lcom/android/server/usb/UsbUI;->cancelAllHostNotification()V
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$1000(Lcom/android/server/usb/UsbUI;)V

    .line 310
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x6f

    const v13, 0x1040c9d

    const/4 v14, 0x0

    const-wide/16 v15, 0x3

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    .line 314
    goto :goto_c8

    .line 301
    :cond_b5
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # invokes: Lcom/android/server/usb/UsbUI;->turnOnDisplay()V
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$1100(Lcom/android/server/usb/UsbUI;)V

    .line 302
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x6f

    const v13, 0x1040c9c

    const/4 v14, 0x0

    const-wide/16 v15, 0x3

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    .line 306
    nop

    .line 338
    :goto_c8
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d4

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 339
    :cond_d4
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    # setter for: Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbUI;->access$902(Lcom/android/server/usb/UsbUI;Z)Z

    .line 341
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$800(Lcom/android/server/usb/UsbUI;)Z

    move-result v4

    if-nez v4, :cond_f6

    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$400(Lcom/android/server/usb/UsbUI;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 342
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$900(Lcom/android/server/usb/UsbUI;)Z

    move-result v5

    # invokes: Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbUI;->access$500(Lcom/android/server/usb/UsbUI;Z)V

    .line 346
    :cond_f6
    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        -0x7022137c -> :sswitch_6c
        -0x523741fb -> :sswitch_62
        0xfc81 -> :sswitch_5a
        0x19d1382a -> :sswitch_50
    .end sparse-switch
.end method
