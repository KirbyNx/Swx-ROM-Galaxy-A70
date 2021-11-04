.class Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/sec/DisplayToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastDumpReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/sec/DisplayToast;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/sec/DisplayToast;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    if-eq v0, v1, :cond_12

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    if-ne v0, v1, :cond_11

    goto :goto_12

    .line 138
    :cond_11
    return-void

    .line 134
    :cond_12
    :goto_12
    const-string v0, "ToastLog"

    const-string/jumbo v1, "start dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    # invokes: Lcom/android/server/notification/sec/DisplayToast;->dump()V
    invoke-static {v0}, Lcom/android/server/notification/sec/DisplayToast;->access$100(Lcom/android/server/notification/sec/DisplayToast;)V

    .line 136
    return-void
.end method
