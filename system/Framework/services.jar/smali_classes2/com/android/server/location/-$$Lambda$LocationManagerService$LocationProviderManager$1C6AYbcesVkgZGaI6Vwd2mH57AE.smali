.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$LocationProviderManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$LocationProviderManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;->f$0:Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;->f$0:Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->lambda$isEnabled$0$LocationManagerService$LocationProviderManager(I)V

    return-void
.end method
