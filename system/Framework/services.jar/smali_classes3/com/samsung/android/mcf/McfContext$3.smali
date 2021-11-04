.class public Lcom/samsung/android/mcf/McfContext$3;
.super Ljava/lang/Object;
.source "McfContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfContext;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 355
    const-string p1, "McfContext"

    const-string v0, "onServiceConnected"

    const-string v1, "-"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-static {p2}, Lcom/samsung/android/mcf/IMcfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/IMcfService;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 357
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 362
    const-string p1, "McfContext"

    const-string v0, "onServiceDisconnected"

    const-string v1, "-"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 364
    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
