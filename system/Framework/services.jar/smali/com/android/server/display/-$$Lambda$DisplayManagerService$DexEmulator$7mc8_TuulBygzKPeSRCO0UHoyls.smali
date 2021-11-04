.class public final synthetic Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method
