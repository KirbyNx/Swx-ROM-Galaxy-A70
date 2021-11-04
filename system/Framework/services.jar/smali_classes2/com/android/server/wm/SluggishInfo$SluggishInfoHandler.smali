.class final Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;
.super Landroid/os/Handler;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishInfoHandler"
.end annotation


# instance fields
.field private slgInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/SluggishInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/wm/SluggishInfo;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "slgInfo"    # Lcom/android/server/wm/SluggishInfo;

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 137
    # getter for: Lcom/android/server/wm/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 138
    # getter for: Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SluggishInfoHandler()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 146
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-nez v0, :cond_5

    .line 147
    return-void

    .line 149
    :cond_5
    # getter for: Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$200()Lcom/android/server/wm/SluggishInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_6a

    .line 152
    :cond_16
    if-eqz p1, :cond_69

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_69

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_23

    goto :goto_69

    .line 155
    :cond_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "componentName":Ljava/lang/String;
    # getter for: Lcom/android/server/wm/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 158
    # getter for: Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " componentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_50
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_60

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5c

    goto :goto_68

    .line 168
    :cond_5c
    # invokes: Lcom/android/server/wm/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->access$500(Ljava/lang/String;)V

    .line 169
    goto :goto_68

    .line 165
    :cond_60
    # invokes: Lcom/android/server/wm/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->access$400(Ljava/lang/String;)V

    .line 166
    goto :goto_68

    .line 162
    :cond_64
    # invokes: Lcom/android/server/wm/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->access$300(Ljava/lang/String;)V

    .line 163
    nop

    .line 173
    :goto_68
    return-void

    .line 153
    .end local v0    # "componentName":Ljava/lang/String;
    :cond_69
    :goto_69
    return-void

    .line 150
    :cond_6a
    :goto_6a
    return-void
.end method
