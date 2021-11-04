.class Lcom/android/server/SystemServer$1;
.super Ljava/util/TimerTask;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$myTid:I


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .line 1021
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    iput p2, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1024
    iget v0, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1025
    return-void
.end method
