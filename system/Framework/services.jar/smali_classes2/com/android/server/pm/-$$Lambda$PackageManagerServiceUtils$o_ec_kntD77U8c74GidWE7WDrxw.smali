.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$o_ec_kntD77U8c74GidWE7WDrxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/dex/DexManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$o_ec_kntD77U8c74GidWE7WDrxw;->f$0:Lcom/android/server/pm/dex/DexManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$o_ec_kntD77U8c74GidWE7WDrxw;->f$0:Lcom/android/server/pm/dex/DexManager;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$5(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageSetting;)Z

    move-result p1

    return p1
.end method
