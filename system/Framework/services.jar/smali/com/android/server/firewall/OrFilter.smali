.class Lcom/android/server/firewall/OrFilter;
.super Lcom/android/server/firewall/FilterList;
.source "OrFilter.java"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/android/server/firewall/OrFilter$1;

    const-string/jumbo v1, "or"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/OrFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 19
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .line 30
    move-object v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, v0, Lcom/android/server/firewall/OrFilter;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 31
    iget-object v2, v0, Lcom/android/server/firewall/OrFilter;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/firewall/Filter;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 33
    const/4 v2, 0x1

    return v2

    .line 30
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    .end local v1    # "i":I
    :cond_28
    const/4 v1, 0x0

    return v1
.end method