.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$RKbACHQlmivCQtg8pEK32CqQHNI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->lambda$ensureSystemPackageNames$42(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
