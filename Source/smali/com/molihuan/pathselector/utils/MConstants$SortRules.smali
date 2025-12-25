.class public final enum Lcom/molihuan/pathselector/utils/MConstants$SortRules;
.super Ljava/lang/Enum;
.source "MConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/molihuan/pathselector/utils/MConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortRules"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/molihuan/pathselector/utils/MConstants$SortRules;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_NAME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_NAME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_SIZE_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_SIZE_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_TIME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public static final enum SORT_TIME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 51
    new-instance v0, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v1, "SORT_NAME_ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_NAME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 52
    new-instance v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v3, "SORT_NAME_DESC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_NAME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 54
    new-instance v3, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v5, "SORT_TIME_ASC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_TIME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 55
    new-instance v5, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v7, "SORT_TIME_DESC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_TIME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 57
    new-instance v7, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v9, "SORT_SIZE_ASC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_SIZE_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 58
    new-instance v9, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    const-string v11, "SORT_SIZE_DESC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_SIZE_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 49
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->$VALUES:[Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/molihuan/pathselector/utils/MConstants$SortRules;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    return-object v0
.end method

.method public static values()[Lcom/molihuan/pathselector/utils/MConstants$SortRules;
    .locals 1

    .line 49
    sget-object v0, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->$VALUES:[Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v0}, [Lcom/molihuan/pathselector/utils/MConstants$SortRules;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    return-object v0
.end method
