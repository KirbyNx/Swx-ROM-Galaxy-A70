.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$K1GN0X5xnmZrIc6UmtWB8jJzjJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$K1GN0X5xnmZrIc6UmtWB8jJzjJA;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$K1GN0X5xnmZrIc6UmtWB8jJzjJA;->f$0:I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$postPreferredActivityChangedBroadcast$35(I)V

    return-void
.end method
