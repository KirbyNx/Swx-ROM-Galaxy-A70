.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->lambda$readSystemProperties$1(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
