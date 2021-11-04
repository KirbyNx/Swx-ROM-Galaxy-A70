.class public final enum Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
.super Ljava/lang/Enum;
.source "FirewallDefinitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallDefinitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

.field public static final enum FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

.field public static final enum NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    const-string v1, "FILTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 71
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    const-string v1, "NAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->$VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 69
    const-class v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->$VALUES:[Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object v0
.end method
