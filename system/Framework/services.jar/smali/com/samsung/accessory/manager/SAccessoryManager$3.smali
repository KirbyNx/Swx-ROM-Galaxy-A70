.class Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 236
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 240
    const-string v0, "USBPD_IDS"

    const-string v1, "UEventObserver, event : "

    const-string v2, "SWITCH_STATE"

    :try_start_6
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z
    invoke-static {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$800(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v3

    if-nez v3, :cond_b9

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3c

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3c

    goto/16 :goto_b9

    .line 244
    :cond_3c
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_54

    .line 245
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 246
    return-void

    .line 248
    :cond_54
    const/4 v3, 0x0

    .line 250
    .local v3, "ids":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 253
    :cond_66
    const-string v0, "b001b7ff"

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1000(Ljava/lang/String;)[B

    move-result-object v0

    .line 254
    .local v0, "pid_check":[B
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z
    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1100(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b8

    if-eqz v3, :cond_b8

    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b8

    const/4 v4, 0x0

    aget-object v6, v3, v4

    const-string v7, "04e8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 255
    aget-object v6, v3, v5

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B
    invoke-static {v6}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1000(Ljava/lang/String;)[B

    move-result-object v6

    .line 256
    .local v6, "pid":[B
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b1

    aget-byte v7, v6, v4

    aget-byte v4, v0, v4

    if-ne v7, v4, :cond_b1

    aget-byte v4, v6, v5

    aget-byte v7, v0, v5

    if-lt v4, v7, :cond_b1

    aget-byte v4, v6, v5

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    if-gt v4, v5, :cond_b1

    .line 257
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_b8

    .line 259
    :cond_b1
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "pid_check":[B
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v6    # "pid":[B
    :cond_b8
    :goto_b8
    goto :goto_dd

    .line 242
    :cond_b9
    :goto_b9
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uEvent switch state is not related with usb auth or Factory binary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c3} :catch_c4

    .line 243
    return-void

    .line 261
    :catch_c4
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_dd
    return-void
.end method
