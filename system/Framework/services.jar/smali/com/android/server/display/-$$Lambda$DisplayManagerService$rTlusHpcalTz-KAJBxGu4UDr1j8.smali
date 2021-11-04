.class public final synthetic Lcom/android/server/display/-$$Lambda$DisplayManagerService$rTlusHpcalTz-KAJBxGu4UDr1j8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$rTlusHpcalTz-KAJBxGu4UDr1j8;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$rTlusHpcalTz-KAJBxGu4UDr1j8;->f$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->lambda$handleDisplayDeviceRemovedLocked$1$DisplayManagerService()V

    return-void
.end method
