declare module '@apiverve/wordopposite' {
  export interface wordoppositeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface wordoppositeResponse {
    status: string;
    error: string | null;
    data: WordOppositesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface WordOppositesData {
      word:      null | string;
      opposites: (null | string)[];
  }

  export default class wordoppositeWrapper {
    constructor(options: wordoppositeOptions);

    execute(callback: (error: any, data: wordoppositeResponse | null) => void): Promise<wordoppositeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: wordoppositeResponse | null) => void): Promise<wordoppositeResponse>;
    execute(query?: Record<string, any>): Promise<wordoppositeResponse>;
  }
}
