.class public final synthetic Lcom/android/server/-$$Lambda$HeimdAllFsService$-iZ2AYnKHGei2o3uOBxDhegwXl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/HeimdAllFsService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$HeimdAllFsService$-iZ2AYnKHGei2o3uOBxDhegwXl0;->f$0:Lcom/android/server/HeimdAllFsService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$HeimdAllFsService$-iZ2AYnKHGei2o3uOBxDhegwXl0;->f$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v0}, Lcom/android/server/HeimdAllFsService;->lambda$connectInstalld$0$HeimdAllFsService()V

    return-void
.end method
