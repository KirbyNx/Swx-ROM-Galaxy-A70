.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$0:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$0:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->lambda$setMaxAspectRatioPolicy$0$PackageSettingsManager$CustomAspectRatioPackageManager(ILjava/lang/String;I)V

    return-void
.end method
