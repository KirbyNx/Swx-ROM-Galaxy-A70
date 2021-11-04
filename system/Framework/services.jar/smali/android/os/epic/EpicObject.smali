.class public final Landroid/os/epic/EpicObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "EpicObject.java"


# static fields
.field private static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field private static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

.field private static final TAG:Ljava/lang/String; = "EpicObject"

.field private static m_epic_getservice_func:Ljava/lang/reflect/Method;

.field private static m_epic_handle_cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m_epic_hint_release_func:Ljava/lang/reflect/Method;

.field private static m_epic_init_func:Ljava/lang/reflect/Method;

.field private static m_epic_init_multi_func:Ljava/lang/reflect/Method;

.field private static m_epic_perf_hint_func:Ljava/lang/reflect/Method;

.field private static m_epic_release_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m_epic_request_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_opt_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

.field private static m_has_load:Z


# instance fields
.field private m_handle_obj:Ljava/lang/Object;

.field private m_request_obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 35
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    .line 36
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    .line 37
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 38
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 39
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 40
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 41
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 42
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 43
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 44
    sput-object v0, Landroid/os/epic/EpicObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    .line 47
    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Landroid/os/epic/EpicObject;->create_instance()V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .param p1, "scenario_id"    # I

    .line 58
    invoke-direct {p0}, Landroid/os/epic/EpicObject;-><init>()V

    .line 60
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_c

    goto :goto_2c

    .line 65
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    .line 66
    if-eqz v0, :cond_29

    .line 67
    sget-object v1, Landroid/os/epic/EpicObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a

    .line 71
    :cond_29
    goto :goto_2b

    .line 70
    :catch_2a
    move-exception v0

    .line 72
    :goto_2b
    return-void

    .line 62
    :cond_2c
    :goto_2c
    return-void
.end method

.method public constructor <init>([I)V
    .registers 7
    .param p1, "scenario_id_list"    # [I

    .line 77
    invoke-direct {p0}, Landroid/os/epic/EpicObject;-><init>()V

    .line 79
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v0, :cond_3f

    sget-object v0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_c

    goto :goto_3f

    .line 84
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    .line 85
    if-eqz v0, :cond_3c

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "scenario_id_short_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v3, p1

    if-ge v1, v3, :cond_2d

    .line 88
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 90
    .end local v1    # "i":I
    :cond_2d
    sget-object v1, Landroid/os/epic/EpicObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_3d

    .line 94
    .end local v0    # "scenario_id_short_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3c
    goto :goto_3e

    .line 93
    :catch_3d
    move-exception v0

    .line 95
    :goto_3e
    return-void

    .line 81
    :cond_3f
    :goto_3f
    return-void
.end method

.method private create_instance()V
    .registers 14

    .line 219
    const-class v0, Landroid/os/epic/EpicObject;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_cf
    .catchall {:try_start_3 .. :try_end_5} :catchall_cd

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 222
    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_cd

    return-void

    .line 224
    :cond_a
    :try_start_a
    const-string/jumbo v1, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 225
    const-string/jumbo v1, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    .line 227
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Class;

    .line 228
    .local v3, "getService_args":[Ljava/lang/Class;
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 229
    .local v4, "init_args":[Ljava/lang/Class;
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v1

    .line 230
    .local v5, "init_multi_args":[Ljava/lang/Class;
    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 231
    .local v6, "acquire_args":[Ljava/lang/Class;
    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v8, v7, v1

    .line 232
    .local v7, "release_args":[Ljava/lang/Class;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 233
    .local v9, "acquire_option_args":[Ljava/lang/Class;
    new-array v8, v8, [Ljava/lang/Class;

    sget-object v10, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v10, v8, v1

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v8, v2

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v8, v11

    .line 234
    .local v8, "acquire_option_multi_args":[Ljava/lang/Class;
    new-array v10, v11, [Ljava/lang/Class;

    sget-object v12, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v12, v10, v1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v2

    .line 235
    .local v10, "perf_hint_args":[Ljava/lang/Class;
    new-array v11, v11, [Ljava/lang/Class;

    sget-object v12, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v12, v11, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v11, v2

    move-object v1, v11

    .line 237
    .local v1, "hint_release_args":[Ljava/lang/Class;
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "getService"

    invoke-virtual {v11, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    .line 238
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "init"

    invoke-virtual {v11, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 239
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "init_multi"

    invoke-virtual {v11, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 240
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v12, "acquire_lock"

    invoke-virtual {v11, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 241
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "release_lock"

    invoke-virtual {v11, v12, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 242
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v12, "acquire_lock_option"

    invoke-virtual {v11, v12, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 243
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v12, "acquire_lock_multi_option"

    invoke-virtual {v11, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 244
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "perf_hint"

    invoke-virtual {v11, v12, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 245
    sget-object v11, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v12, "hint_release"

    invoke-virtual {v11, v12, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Landroid/os/epic/EpicObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 247
    sput-boolean v2, Landroid/os/epic/EpicObject;->m_has_load:Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_cc} :catch_cf
    .catchall {:try_start_a .. :try_end_cc} :catchall_cd

    .line 250
    .end local v1    # "hint_release_args":[Ljava/lang/Class;
    .end local v3    # "getService_args":[Ljava/lang/Class;
    .end local v4    # "init_args":[Ljava/lang/Class;
    .end local v5    # "init_multi_args":[Ljava/lang/Class;
    .end local v6    # "acquire_args":[Ljava/lang/Class;
    .end local v7    # "release_args":[Ljava/lang/Class;
    .end local v8    # "acquire_option_multi_args":[Ljava/lang/Class;
    .end local v9    # "acquire_option_args":[Ljava/lang/Class;
    .end local v10    # "perf_hint_args":[Ljava/lang/Class;
    goto :goto_d0

    .line 251
    :catchall_cd
    move-exception v1

    goto :goto_d2

    .line 249
    :catch_cf
    move-exception v1

    .line 251
    :goto_d0
    :try_start_d0
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :goto_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_cd

    throw v1
.end method


# virtual methods
.method public acquire_lock()Z
    .registers 8

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_27

    .line 108
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_24

    if-eqz v1, :cond_21

    goto :goto_22

    :cond_21
    move v3, v6

    :goto_22
    move v0, v3

    .line 112
    goto :goto_26

    .line 110
    :catch_24
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return v0

    .line 105
    :cond_27
    :goto_27
    return v0
.end method

.method public acquire_lock_option(II)Z
    .registers 11
    .param p1, "value"    # I
    .param p2, "usec"    # I

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_34

    .line 148
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_31

    if-eqz v1, :cond_2f

    move v5, v6

    :cond_2f
    move v0, v5

    .line 152
    goto :goto_33

    .line 150
    :catch_31
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return v0

    .line 145
    :cond_34
    :goto_34
    return v0
.end method

.method public acquire_lock_option_multi([I[I)Z
    .registers 10
    .param p1, "value_list"    # [I
    .param p2, "usec_list"    # [I

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_2c

    .line 167
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v6, 0x2

    aput-object p2, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_29

    if-eqz v1, :cond_27

    move v5, v4

    :cond_27
    move v0, v5

    .line 171
    goto :goto_2b

    .line 169
    :catch_29
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    return v0

    .line 164
    :cond_2c
    :goto_2c
    return v0
.end method

.method public hint_release(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_29

    .line 207
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_26

    if-eqz v1, :cond_24

    move v5, v4

    :cond_24
    move v0, v5

    .line 211
    goto :goto_28

    .line 209
    :catch_26
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_28
    return v0

    .line 204
    :cond_29
    :goto_29
    return v0
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_29

    .line 187
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_26

    if-eqz v1, :cond_24

    move v5, v4

    :cond_24
    move v0, v5

    .line 191
    goto :goto_28

    .line 189
    :catch_26
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_28
    return v0

    .line 184
    :cond_29
    :goto_29
    return v0
.end method

.method public release_lock()Z
    .registers 8

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "ret":Z
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    goto :goto_27

    .line 128
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_24

    if-eqz v1, :cond_21

    goto :goto_22

    :cond_21
    move v3, v6

    :goto_22
    move v0, v3

    .line 132
    goto :goto_26

    .line 130
    :catch_24
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return v0

    .line 125
    :cond_27
    :goto_27
    return v0
.end method
