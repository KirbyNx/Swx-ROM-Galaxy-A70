.class Lcom/android/server/bridge/operations/DbObserver$5;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bridge/operations/DbObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$5;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/bridge/operations/DbObserver$5;->onChange(ZLandroid/net/Uri;)V

    .line 133
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 141
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$5;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # invokes: Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)V

    .line 142
    return-void
.end method
