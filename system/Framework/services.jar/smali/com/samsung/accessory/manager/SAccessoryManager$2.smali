.class Lcom/samsung/accessory/manager/SAccessoryManager$2;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;


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

    .line 170
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 173
    const/4 v0, -0x1

    .line 174
    .local v0, "authEvent":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    goto :goto_1a

    .line 185
    :cond_e
    const/16 v0, 0xd

    goto :goto_1a

    .line 182
    :cond_11
    const/16 v0, 0xc

    .line 183
    goto :goto_1a

    .line 179
    :cond_14
    const/16 v0, 0xb

    .line 180
    goto :goto_1a

    .line 176
    :cond_17
    const/16 v0, 0xa

    .line 177
    nop

    .line 188
    :goto_1a
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method
