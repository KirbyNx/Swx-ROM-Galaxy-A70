.class public abstract Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.super Ljava/lang/Object;
.source "CoreStateVolatileObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# instance fields
.field protected final mBooleanDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field protected final mFloatDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field protected final mIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLongDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStringDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolatileStatesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final mVolatileStatesToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .registers 20
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;I)Z"
        }
    .end annotation

    .line 65
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 66
    .local v3, "changed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 67
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 68
    .local v6, "setting":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 69
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_5f

    .line 71
    iget-object v8, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 72
    .local v8, "defaultKeyString":Ljava/lang/String;
    const-string v9, ""

    if-eqz v8, :cond_39

    move-object v10, v8

    goto :goto_3a

    :cond_39
    move-object v10, v9

    .line 73
    .local v10, "defaultKey":Ljava/lang/String;
    :goto_3a
    iget-object v11, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 74
    .local v11, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v11, :cond_4b

    .line 75
    invoke-virtual {v11, v2, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "value":Ljava/lang/String;
    goto :goto_4d

    .line 77
    .end local v9    # "value":Ljava/lang/String;
    :cond_4b
    const-string v9, ""

    .line 79
    .restart local v9    # "value":Ljava/lang/String;
    :goto_4d
    if-eqz v9, :cond_5d

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    .line 80
    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x1

    .line 83
    .end local v8    # "defaultKeyString":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "defaultKey":Ljava/lang/String;
    .end local v11    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_5d
    goto/16 :goto_14d

    :cond_5f
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_9a

    .line 85
    iget-object v8, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 86
    .local v8, "defaultKeyInteger":Ljava/lang/Integer;
    if-eqz v8, :cond_73

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_74

    :cond_73
    move v10, v9

    .line 87
    .local v10, "defaultKey":I
    :goto_74
    iget-object v11, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 88
    .local v11, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_8d

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .local v12, "value":I
    goto :goto_8e

    .line 91
    .end local v12    # "value":I
    :cond_8d
    move v12, v10

    .line 93
    .restart local v12    # "value":I
    :goto_8e
    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v12, v9, :cond_98

    .line 94
    invoke-virtual {v1, v6, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const/4 v3, 0x1

    .line 97
    .end local v8    # "defaultKeyInteger":Ljava/lang/Integer;
    .end local v10    # "defaultKey":I
    .end local v11    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v12    # "value":I
    :cond_98
    goto/16 :goto_14d

    :cond_9a
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_d7

    .line 99
    iget-object v8, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 100
    .local v8, "defaultKeyFloat":Ljava/lang/Float;
    const/4 v9, 0x0

    if-eqz v8, :cond_ae

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_af

    :cond_ae
    move v10, v9

    .line 101
    .local v10, "defaultKey":F
    :goto_af
    iget-object v11, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 102
    .local v11, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-eqz v11, :cond_c8

    .line 103
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .local v9, "value":F
    goto :goto_c9

    .line 105
    .end local v9    # "value":F
    :cond_c8
    const/4 v9, 0x0

    .line 107
    .restart local v9    # "value":F
    :goto_c9
    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v12

    cmpl-float v12, v9, v12

    if-eqz v12, :cond_d5

    .line 108
    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    const/4 v3, 0x1

    .line 111
    .end local v8    # "defaultKeyFloat":Ljava/lang/Float;
    .end local v9    # "value":F
    .end local v10    # "defaultKey":F
    .end local v11    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :cond_d5
    goto/16 :goto_14d

    :cond_d7
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_115

    .line 113
    iget-object v8, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 114
    .local v8, "defaultKeyLong":Ljava/lang/Long;
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_ec

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_ed

    :cond_ec
    move-wide v11, v9

    .line 115
    .local v11, "defaultKey":J
    :goto_ed
    iget-object v13, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 116
    .local v13, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    if-eqz v13, :cond_106

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v2, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .local v9, "value":J
    goto :goto_108

    .line 119
    .end local v9    # "value":J
    :cond_106
    const-wide/16 v9, 0x0

    .line 121
    .restart local v9    # "value":J
    :goto_108
    invoke-virtual {v1, v6, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v14, v9, v14

    if-eqz v14, :cond_114

    .line 122
    invoke-virtual {v1, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    const/4 v3, 0x1

    .line 125
    .end local v8    # "defaultKeyLong":Ljava/lang/Long;
    .end local v9    # "value":J
    .end local v11    # "defaultKey":J
    .end local v13    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_114
    goto :goto_14d

    :cond_115
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_114

    .line 127
    iget-object v8, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 128
    .local v8, "defaultKeyBoolean":Ljava/lang/Boolean;
    if-eqz v8, :cond_128

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_129

    :cond_128
    move v10, v9

    .line 129
    .local v10, "defaultKey":Z
    :goto_129
    iget-object v11, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 130
    .local v11, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz v11, :cond_142

    .line 131
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .local v9, "value":Z
    goto :goto_143

    .line 133
    .end local v9    # "value":Z
    :cond_142
    const/4 v9, 0x0

    .line 135
    .restart local v9    # "value":Z
    :goto_143
    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eq v9, v12, :cond_14d

    .line 136
    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const/4 v3, 0x1

    .line 140
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v6    # "setting":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "defaultKeyBoolean":Ljava/lang/Boolean;
    .end local v9    # "value":Z
    .end local v10    # "defaultKey":Z
    .end local v11    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :cond_14d
    :goto_14d
    goto/16 :goto_f

    .line 141
    :cond_14f
    return v3
.end method


# virtual methods
.method public synthetic lambda$setState$0$CoreStateVolatileObserver(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    return-void
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .registers 5
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "changed":I
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 59
    const/4 v1, 0x2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public removeStatesForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 192
    .local v2, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    if-eqz v2, :cond_21

    .line 193
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<*>;>;"
    .end local v2    # "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    :cond_21
    goto :goto_a

    .line 196
    :cond_22
    return-void
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .registers 2
    .param p1, "controller"    # Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->registerObservingItems()V

    .line 53
    return-void
.end method

.method setState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "notify"    # Z
    .param p5, "notifyImmediately"    # Z
    .param p6, "postRunnable"    # Ljava/lang/Runnable;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 147
    .local v0, "repository":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    if-nez v0, :cond_56

    .line 148
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 149
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 150
    :cond_19
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 151
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 152
    :cond_28
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_37

    .line 153
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 154
    :cond_37
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_46

    .line 155
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 156
    :cond_46
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    .line 157
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 159
    :cond_55
    return-void

    .line 163
    :cond_56
    :goto_56
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_69

    .line 164
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 165
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_b6

    :cond_69
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_7c

    .line 167
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 168
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    goto :goto_b6

    :cond_7c
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_8f

    .line 170
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 171
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    goto :goto_b6

    :cond_8f
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_a2

    .line 173
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 174
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    goto :goto_b5

    .line 175
    :cond_a2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_b5

    .line 176
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 177
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b6

    .line 175
    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :cond_b5
    :goto_b5
    nop

    .line 180
    :goto_b6
    if-eqz p4, :cond_ca

    .line 181
    if-eqz p5, :cond_c0

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v1, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    goto :goto_ca

    .line 184
    :cond_c0
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;

    invoke-direct {v2, p0, p3, p6}, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;-><init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_ca
    :goto_ca
    return-void
.end method
