.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;

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

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
