.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$6Ck2Sdx23STns5Y149bmDsLdhe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowEnableController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowEnableController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$6Ck2Sdx23STns5Y149bmDsLdhe8;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$6Ck2Sdx23STns5Y149bmDsLdhe8;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowEnableController;->lambda$onCoreStateChanged$0$MultiWindowEnableController()V

    return-void
.end method
