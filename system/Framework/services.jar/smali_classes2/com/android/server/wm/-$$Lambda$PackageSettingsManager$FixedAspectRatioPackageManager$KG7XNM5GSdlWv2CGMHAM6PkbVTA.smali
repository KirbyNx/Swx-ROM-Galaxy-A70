.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$KG7XNM5GSdlWv2CGMHAM6PkbVTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$KG7XNM5GSdlWv2CGMHAM6PkbVTA;->f$0:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$KG7XNM5GSdlWv2CGMHAM6PkbVTA;->f$0:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    check-cast p1, Lcom/android/server/wm/PolicyDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->lambda$new$1$PackageSettingsManager$FixedAspectRatioPackageManager(Lcom/android/server/wm/PolicyDataMap;)V

    return-void
.end method
