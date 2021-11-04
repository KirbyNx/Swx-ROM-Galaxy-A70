.class public final synthetic Lcom/android/server/-$$Lambda$SpqrService$ffnR7nM5-Ho0EOum0CMaC59Ni0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SpqrService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SpqrService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SpqrService$ffnR7nM5-Ho0EOum0CMaC59Ni0U;->f$0:Lcom/android/server/SpqrService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SpqrService$ffnR7nM5-Ho0EOum0CMaC59Ni0U;->f$0:Lcom/android/server/SpqrService;

    invoke-virtual {v0}, Lcom/android/server/SpqrService;->lambda$findSpqrNativeService$0$SpqrService()V

    return-void
.end method
