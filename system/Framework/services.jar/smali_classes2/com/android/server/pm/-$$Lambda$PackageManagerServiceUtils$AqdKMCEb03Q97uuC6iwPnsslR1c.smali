.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$AqdKMCEb03Q97uuC6iwPnsslR1c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$3(Lcom/android/server/pm/PackageSetting;)Z

    move-result p1

    return p1
.end method
