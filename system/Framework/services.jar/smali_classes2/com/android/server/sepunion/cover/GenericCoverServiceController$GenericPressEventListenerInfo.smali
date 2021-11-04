.class Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericPressEventListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .line 250
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    .line 252
    iput-object p3, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    .line 253
    iput p4, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    .line 254
    iput p5, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    .line 255
    iput p6, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    .line 256
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 260
    # getter for: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    # getter for: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$300(Lcom/android/server/sepunion/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 262
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    # getter for: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$300(Lcom/android/server/sepunion/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 264
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 265
    return-void

    .line 263
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 268
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 269
    # getter for: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received onSystemCoverEvent!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 273
    :cond_f
    nop

    .line 274
    :try_start_10
    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 275
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_19

    .line 276
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    .line 280
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_19
    goto :goto_24

    .line 278
    :catch_1a
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onSystemCoverEvent callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method
