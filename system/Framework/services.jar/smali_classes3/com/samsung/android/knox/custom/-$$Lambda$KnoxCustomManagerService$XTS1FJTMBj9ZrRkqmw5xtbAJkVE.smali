.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/telephony/TelephonyManager;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/telephony/TelephonyManager;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$1:Landroid/telephony/TelephonyManager;

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$2:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$1:Landroid/telephony/TelephonyManager;

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XTS1FJTMBj9ZrRkqmw5xtbAJkVE;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMobileDataState$43$KnoxCustomManagerService(Landroid/telephony/TelephonyManager;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
