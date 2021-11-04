.class public final enum Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
.super Ljava/lang/Enum;
.source "BlacklistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisableApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

.field public static final enum ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

.field public static final enum GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    new-instance v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    const-string v1, "GET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    .line 6
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    sget-object v4, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->$VALUES:[Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->$VALUES:[Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0
.end method
