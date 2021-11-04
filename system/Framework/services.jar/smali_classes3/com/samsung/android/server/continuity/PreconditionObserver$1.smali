.class Lcom/samsung/android/server/continuity/PreconditionObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "PreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/PreconditionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 280
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 284
    const/16 v0, 0xa

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, "btState":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    .line 286
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    const-string v2, "mBtOnReceiver.onReceive - ACTION_STATE_CHANGED : STATE_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings()V
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$000(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 290
    .end local v0    # "btState":I
    :cond_24
    return-void
.end method
