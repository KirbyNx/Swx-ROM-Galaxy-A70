.class public final synthetic Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;-><init>()V

    sput-object v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->lambda$verifySize$0(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
