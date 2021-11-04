.class final enum Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;
.super Ljava/lang/Enum;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HQM_SUPPORT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum NOT_SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum UNKNOWN:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 138
    new-instance v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    new-instance v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "NOT_SUPPORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    new-instance v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "SUPPORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v5, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->$VALUES:[Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 138
    const-class v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;
    .registers 1

    .line 138
    sget-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->$VALUES:[Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    invoke-virtual {v0}, [Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-object v0
.end method
