.class Lcom/android/server/location/NSLocationMonitor$MessageRunnable;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageRunnable"
.end annotation


# instance fields
.field private final msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor$MessageRunnable;->msg:Landroid/os/Message;

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$MessageRunnable;->msg:Landroid/os/Message;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->onSendMessage(Landroid/os/Message;)V
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$000(Landroid/os/Message;)V

    .line 506
    return-void
.end method
