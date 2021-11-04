.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$3fVoecfGd4UyceNLcG_XzvamKMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$3fVoecfGd4UyceNLcG_XzvamKMA;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$3fVoecfGd4UyceNLcG_XzvamKMA;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$4(Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)Z

    move-result p1

    return p1
.end method
