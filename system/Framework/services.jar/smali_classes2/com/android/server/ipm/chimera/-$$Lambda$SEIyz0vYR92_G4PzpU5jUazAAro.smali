.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/am/mars/filter/filter/HomeFilter;

    invoke-virtual {p1}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getHomePackage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
