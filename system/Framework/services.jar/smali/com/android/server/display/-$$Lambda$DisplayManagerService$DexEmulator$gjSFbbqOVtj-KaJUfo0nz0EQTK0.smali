.class public final synthetic Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$gjSFbbqOVtj-KaJUfo0nz0EQTK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$DexEmulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$gjSFbbqOVtj-KaJUfo0nz0EQTK0;->f$0:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$gjSFbbqOVtj-KaJUfo0nz0EQTK0;->f$0:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$onSystemReadyLocked$0$DisplayManagerService$DexEmulator()V

    return-void
.end method
