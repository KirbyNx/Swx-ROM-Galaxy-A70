.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$MlNEn35gP6qrS0evEe30wW-Rhz8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$6(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I

    move-result p1

    return p1
.end method
